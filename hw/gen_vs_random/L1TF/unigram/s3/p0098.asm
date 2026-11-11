.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -5
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
xchg di, ax
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 9
lea ebx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
xchg bl, al
add cl, -110 # instrumentation
setbe al
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 51
bt dx, 223
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rsi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
