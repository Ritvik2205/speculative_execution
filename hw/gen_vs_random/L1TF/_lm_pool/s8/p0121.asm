.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
add rcx, 49
test ecx, 62
or al, dl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
seto dl
xor dil, al
jmp .bb_0.1
.bb_0.1:
sub cl, -49
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
btc di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
