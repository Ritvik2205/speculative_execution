.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
cmovno di, di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 65
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
cmovs ecx, esi
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rsi
or dx, -126
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
setbe cl
bt edx, edi
add dil, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
add sil, sil
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
