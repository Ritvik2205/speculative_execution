.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and bl, 68
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor cl, sil
test ax, cx
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
xor bl, al
or sil, dl
test ecx, -1843375753
btr eax, edx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
test rax, -1579405415
test cx, 401
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
