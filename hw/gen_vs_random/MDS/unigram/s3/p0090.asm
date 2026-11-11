.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 41
and sil, sil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
or sil, al
test di, 61
bt eax, esi
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], si
xor rbx, 89
and al, 23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
and al, -23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 93
and cl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
xor cl, 83
cmovnb rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
