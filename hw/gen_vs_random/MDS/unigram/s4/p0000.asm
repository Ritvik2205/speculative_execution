.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and bl, -74 # instrumentation
cmovns ebx, eax
or bl, bl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 88
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
or ebx, -15
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
or ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
test al, cl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
xor cl, 55
xor dil, -70
test dl, 48
cmovnp edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
