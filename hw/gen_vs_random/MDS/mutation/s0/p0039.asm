.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
cmovo rbx, rdi
and ax, -16061
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
cmovo eax, ebx
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and bl, bl
btr rsi, 146
jmp .bb_0.1
.bb_0.1:
and al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
cmovno rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and cl, 49 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
test edi, eax
and rsi, rsi
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
or al, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
btc dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
