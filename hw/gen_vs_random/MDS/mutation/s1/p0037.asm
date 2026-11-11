.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
xor dl, bl
bts cx, 177
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovnp rax, rcx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
xor bl, bl
or dl, -21
bt bx, di
and bl, -56 # instrumentation
cmovnle edi, esi
test al, 66
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
xor dil, -3
and dl, cl
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
bts si, 205
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
