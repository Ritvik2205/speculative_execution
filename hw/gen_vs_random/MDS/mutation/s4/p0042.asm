.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, ecx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmovs rcx, rax
cmovnbe rbx, rax
and eax, 33
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
btr ecx, eax
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
cmovnp rax, rsi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmovnle edi, ebx
and rax, -978188247
or dil, -41
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
