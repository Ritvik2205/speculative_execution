.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
cmovo edx, eax
and eax, edi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
btr bx, ax
or edx, ebx
cmovo ax, cx
test dil, dil
not ecx
not bl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], bx
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
not sil
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 83
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
