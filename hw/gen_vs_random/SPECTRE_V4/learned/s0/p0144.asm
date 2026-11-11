.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
or dl, sil
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
lea esi, qword ptr [rax + rsi]
lea rdi, qword ptr [rax]
xchg bx, cx
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
btr cx, si
or si, 73
or cl, dl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
or bl, cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
