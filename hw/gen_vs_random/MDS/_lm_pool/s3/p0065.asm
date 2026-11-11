.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, 94
xor al, bl
xor di, 40
bts rdi, 130
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
xor cl, bl
and ax, 27170
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
jmp .bb_0.2
.bb_0.2:
or al, dl
and ecx, -104
test edx, -1561252782
and dl, -73
btr ebx, ecx
xor al, 9
jmp .bb_0.3
.bb_0.3:
and edi, 23
xor rax, -1499464454
or cx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
