.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and cl, -111
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
btc bx, bx
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
or ax, -4210
bt bx, 253
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
bt rcx, 18
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and al, 35
and bl, 3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
cmovle ax, di
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
or esi, esi
xor bl, -102
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and bl, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
cmovbe edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
