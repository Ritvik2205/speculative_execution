.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
bts rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
bt edx, 80
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
cmovz di, di
and dl, sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
and rax, 4
and dl, 93 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
cmovnb rsi, rcx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
or cl, 6
cmovs rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
