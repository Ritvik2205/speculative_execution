.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
or sil, -78
test edi, -1252846009
test rax, -1579405415
or dil, -71
and bl, bl
and rax, rbx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor ax, -23364
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
test al, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and cx, -8
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
