.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
movzx bx, dl
sub dl, -78
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and si, si
test rdi, rax
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
btc dx, di
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
sub eax, eax
cmp rax, 108211639
adc ax, 87
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
cmovb eax, eax
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
lea si, qword ptr [rcx + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
lea edi, qword ptr [rdi]
cmovnbe rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
