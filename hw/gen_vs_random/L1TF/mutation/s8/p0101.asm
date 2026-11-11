.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, si
test rdi, rax
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
btc dx, di
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
sub eax, eax
cmp rax, 834498504
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
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
and ax, 37
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
