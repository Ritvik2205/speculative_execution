.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
or di, 0b1000000000000000 # instrumentation
bsf dx, di
btc bx, di
or al, sil
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rcx, -63
jmp .bb_0.1
.bb_0.1:
cmovnbe ebx, edx
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
btr cx, di
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
cmovnle ecx, esi
and al, al
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
