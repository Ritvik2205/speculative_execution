.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
cmovnp cx, ax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
cmovb eax, esi
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test cl, 54
and cl, 114 # instrumentation
cmovz dx, bx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
xor ecx, 8
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
btc esi, edi
and dl, 48 # instrumentation
cmovz rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
