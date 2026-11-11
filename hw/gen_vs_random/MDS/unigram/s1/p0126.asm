.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, bx
or eax, -1777347252
xor bl, -27
test di, 29
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and al, 20 # instrumentation
cmovp si, bx
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
xor ax, -5889
xor eax, 984871847
xor dl, cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
or di, ax
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and dl, cl
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
