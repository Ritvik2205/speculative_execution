.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
xor bl, sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
and dl, 66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and dl, bl
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 74
bt rdx, rax
cmovno rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 70
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 19
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
