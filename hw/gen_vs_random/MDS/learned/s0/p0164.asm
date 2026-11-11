.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 15
bt ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 46
xor cl, dil
xor cl, cl
cmovnb si, ax
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, edx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
xor cl, -79
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
or eax, -1642752131
and dil, dil
and bl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
cmovp edx, ebx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 11
and al, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
