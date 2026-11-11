.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 6
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or sil, cl
test bl, -9
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
test al, bl
or ax, -23697
bt si, ax
xor al, 55
and al, dl
test eax, 424329527
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and al, cl
jmp .bb_0.1
.bb_0.1:
test al, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
