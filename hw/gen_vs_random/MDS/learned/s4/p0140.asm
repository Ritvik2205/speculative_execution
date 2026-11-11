.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
test cl, 54
and eax, 366961170
and rcx, 107
cmovno rax, rdx
test sil, dl
jmp .bb_0.1
.bb_0.1:
btc di, 164
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
