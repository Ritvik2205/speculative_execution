.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz dx, si
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and dl, -59 # instrumentation
cmovbe dx, di
xor al, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test dl, al
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
or si, -12
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
bt ecx, edx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and dil, sil
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
btc ebx, ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
