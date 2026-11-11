.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add al, al
lea ebx, qword ptr [rdi]
xor bl, dil
jmp .bb_0.1
.bb_0.1:
test al, -70
jmp .bb_0.2
.bb_0.2:
test dil, -126
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and dl, sil
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
