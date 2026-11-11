.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
xor ax, -12492
test sil, al
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
or cl, 39
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and dl, dl
xor rax, -270810088
xor rax, -773894210
or al, 24
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test bl, 65
and rax, -1701787862
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
