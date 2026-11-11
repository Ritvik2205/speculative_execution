.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and sil, al
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test al, cl
btc cx, 115
xor dil, bl
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and bl, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor dil, 124
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test rax, -1579405415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
