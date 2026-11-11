.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, si
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
lea edi, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
test rdi, rax
cmovnbe rsi, rdi
adc ax, 87
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
lea si, qword ptr [rcx + rax]
sub eax, eax
cmp rax, 921820217
btc dx, di
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
cmovb eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
