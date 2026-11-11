.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor al, dil
test cx, ax
xor al, dl
or di, 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and bl, bl
jmp .bb_0.1
.bb_0.1:
or dil, -71
or al, -58
xor ax, -5889
or rdi, 21
test sil, -96
xor dl, bl
test bl, 65
test al, dil
xor bl, -88
xor ax, 23633
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
or al, -24
and dl, al
or ax, 16560
jmp .bb_0.2
.bb_0.2:
test dl, bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or cl, 119
xor bl, -102
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
