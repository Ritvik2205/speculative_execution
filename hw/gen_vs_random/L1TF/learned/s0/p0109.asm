.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
cmp al, al
and cl, 85
lea cx, qword ptr [rcx + rdi + 51091]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 95
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 74
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc cx, 54
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
jmp .bb_0.1
.bb_0.1:
add al, 71 # instrumentation
setp dl
test bl, cl
or al, al
lea di, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
