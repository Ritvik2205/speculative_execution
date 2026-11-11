.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or bl, -125
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
or bl, -54
cmovs ecx, esi
bts edx, 189
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and dl, -19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
cmovs rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
test rbx, 65
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
xor rdi, -9
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 59
bts rdx, 200
bt eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
