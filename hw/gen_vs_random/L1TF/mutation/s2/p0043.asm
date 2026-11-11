.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, eax
cmovb eax, eax
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and si, si
btc dx, di
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
cmp rax, 921820217
test rdi, rax
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
lea si, qword ptr [rcx + rax]
lea edi, qword ptr [rdi]
cmovnbe rsi, rdi
adc ax, 87
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
