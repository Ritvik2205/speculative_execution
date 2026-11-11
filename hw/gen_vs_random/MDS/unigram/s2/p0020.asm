.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
or ax, -23697
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
xor dl, dil
cmovnb rsi, rsi
or sil, al
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and al, dl
test esi, edx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
cmovo eax, esi
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
xor rdi, -9
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
test si, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
