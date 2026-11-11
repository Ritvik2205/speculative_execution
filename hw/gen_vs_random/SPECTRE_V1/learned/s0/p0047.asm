.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
lea rbx, qword ptr [rsi]
xchg edi, ebx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor al, -64
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
sub cl, cl
setno dl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
mov bl, dil
lea dx, qword ptr [rsi + rbx + 60147]
xor al, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
