.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
or rax, 302048971
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
xor cl, dl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
xor al, bl
xor cl, 15
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor bl, -27
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
test dil, bl
bt dx, cx
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
