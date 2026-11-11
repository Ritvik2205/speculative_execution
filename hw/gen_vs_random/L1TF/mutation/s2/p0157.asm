.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
inc esi
test bx, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
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
cmp rax, 16650668
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
