.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
btr ecx, eax
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and dl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
cmovbe ebx, edx
btr ecx, ecx
cmovnbe rbx, rax
and eax, 461212071
cmovs rcx, rax
btc rsi, 80
or bl, cl
cmovnbe rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
bt esi, edx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
