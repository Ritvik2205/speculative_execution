.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, 80
btr ecx, ecx
or bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and dl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
btr ecx, eax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
and eax, -574348013
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
cmovnbe rbx, rax
cmovs rcx, rax
bt esi, edx
cmovnbe rdx, rsi
cmovbe ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
