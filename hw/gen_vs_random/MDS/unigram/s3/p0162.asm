.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rsi, rbx
and cx, bx
and dil, al
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
test dl, sil
xor al, -15
cmovo rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 74
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test rcx, 68
and bl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
bts rax, 149
btr rbx, rbx
or eax, ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 64
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 99
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
