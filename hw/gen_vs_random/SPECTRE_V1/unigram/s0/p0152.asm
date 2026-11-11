.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 22
lea rbx, qword ptr [rsi + rax + 5]
or sil, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -75
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmovb rdx, rcx
bt rdx, 5
sub ecx, 28
bt edi, esi
setbe dl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
test bl, -8
sub al, -89
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
