.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
lea si, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
lea edi, qword ptr [rdi]
cmp rax, 108211639
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
btc dx, di
sub eax, eax
and si, si
cmovb eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
cmovnbe rsi, rdi
adc ax, 87
test rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
