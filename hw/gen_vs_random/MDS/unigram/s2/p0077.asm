.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 146
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
or al, bl
xor bl, -88
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
jmp .bb_0.1
.bb_0.1:
test eax, -409834435
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
xor dil, al
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and al, 35
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 27
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
and dl, 91 # instrumentation
cmovnle esi, esi
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
