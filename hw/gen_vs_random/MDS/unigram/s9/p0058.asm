.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rax
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
or dil, -41
or dil, -78
bt rdi, 36
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
btr edi, ebx
bts rdi, rcx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
or si, -12
and cl, 126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr cx, ax
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
bt ax, 76
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
cmovnle cx, di
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
test rdx, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
