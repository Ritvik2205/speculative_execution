.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
cmovb rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
setp bl
add al, 19 # instrumentation
setnz al
and rdx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdx]
add bl, -95
sbb ax, -17107
loope .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ecx, 46
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and bl, -65
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
xor bl, dl
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
