.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, sil
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xor al, cl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
not cl
xor rax, -1499464454
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
bt di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
