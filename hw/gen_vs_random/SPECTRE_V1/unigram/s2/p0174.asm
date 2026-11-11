.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or rbx, 46
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
test di, si
or al, sil
cmovbe edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -39
test edi, edx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
movsx rdx, bx
imul rdi
adc di, ax
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
movzx edi, cx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
