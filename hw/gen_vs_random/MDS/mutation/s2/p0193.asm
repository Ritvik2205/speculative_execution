.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, 105
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
btr ecx, eax
or bl, cl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and dl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
and eax, 461212071
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmovs rcx, rax
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
cmovbe ebx, edx
cmovnbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
btr ecx, ecx
bt esi, edx
cmovnbe rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
