.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
bt edx, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
xor rax, -843636050
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
xor ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, dil
or dl, -8
bt ax, 76
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test eax, -675944960
or ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and dx, 3
btr esi, esi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
jmp .bb_0.2
.bb_0.2:
and bl, 15 # instrumentation
cmovb di, si
cmovbe ax, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmovnb rax, rsi
cmovno rsi, rdx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or al, -75
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
