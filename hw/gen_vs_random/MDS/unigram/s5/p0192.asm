.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, edx
not edi
cmovnbe edx, edi
or dl, -97
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and rsi, rsi
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
btc esi, 199
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rsi, 6
and bl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
btr di, ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 94
or sil, al
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
bt ecx, 80
test al, 66
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
btr ebx, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
