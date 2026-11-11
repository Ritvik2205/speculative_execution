.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
xor bl, al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
btr ax, di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
test rax, -2004802425
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dl, -43
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 30
and rax, 452940266
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
