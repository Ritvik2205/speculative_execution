.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
cmovno rax, rax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
test ebx, edi
cmovns rdi, rcx
jmp .bb_0.2
.bb_0.2:
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and bl, 120 # instrumentation
cmovnp cx, si
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
cmovbe si, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
xor al, 9
bts rcx, rdi
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
cmovnbe edi, edx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
xor rax, -345061362
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and dl, 60 # instrumentation
cmovnl esi, edi
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
