.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ecx
and rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
or dl, cl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and cl, -14 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and cl, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and sil, -9
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
cmovnle rdi, rcx
jmp .bb_0.1
.bb_0.1:
or si, 0b1000000000000000 # instrumentation
bsr cx, si
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or rbx, -72
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
