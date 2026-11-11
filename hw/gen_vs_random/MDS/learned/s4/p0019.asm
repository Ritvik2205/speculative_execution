.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, dil
xor dl, sil
or ax, -14271
and cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and al, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
test rax, -1579405415
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and cl, -111
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
bt cx, si
xor dl, sil
btc bx, 104
and al, dl
xor eax, 984871847
or dl, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
