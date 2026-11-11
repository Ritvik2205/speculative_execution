.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
and bl, 120 # instrumentation
cmovnle ecx, ecx
test rcx, -613256812
and rdx, rsi
and di, 91
bt rax, 8
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
or si, 0b1000000000000000 # instrumentation
bsr cx, si
bt rax, rax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test ax, -11534
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
bts cx, ax
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 66
or bl, cl
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
