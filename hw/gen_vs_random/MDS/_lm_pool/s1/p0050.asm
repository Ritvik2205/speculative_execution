.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
xor rax, -91
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdi, 50
and sil, dl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or bl, al
xor dil, -124
or al, cl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
btr bx, ax
test dil, -80
jmp .bb_0.1
.bb_0.1:
bt ax, cx
xor cx, -18
and al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
