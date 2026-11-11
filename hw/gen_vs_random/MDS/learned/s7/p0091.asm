.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 82
not dl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
btr edx, esi
test al, 22
xor dl, sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and dl, dl
xor si, 80
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
xor bl, -27
or cx, 39
lea edi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
