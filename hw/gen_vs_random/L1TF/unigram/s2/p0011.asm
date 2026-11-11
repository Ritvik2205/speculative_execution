.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ax, di
add bl, -3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 0
add dl, -121 # instrumentation
cmovnp esi, eax
btr edx, esi
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
bts eax, edx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
add cl, -38 # instrumentation
setbe dl
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add dl, 43 # instrumentation
adc al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
