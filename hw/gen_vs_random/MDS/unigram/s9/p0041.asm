.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
xor cl, 15
bts si, 205
and dil, 23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
cmovle esi, edx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
test eax, 298249463
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
or dl, -31
or dl, dl
bts rdx, 200
cmovns eax, ebx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
cmovns rax, rcx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
