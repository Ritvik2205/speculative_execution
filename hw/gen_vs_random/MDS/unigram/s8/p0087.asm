.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
xor rdx, -59
cmovo cx, dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or al, -58
bt rdx, rax
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovs edi, ebx
and dl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
cmovns ax, di
cmovno rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
and al, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
cmovo eax, edx
btr edi, edi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdi
and cl, -15 # instrumentation
cmovnp cx, cx
and rcx, rbx
btc rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
