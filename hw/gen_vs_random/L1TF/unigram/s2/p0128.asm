.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, esi
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
add al, -117 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 10
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
sbb dil, 39
setno cl
lea si, qword ptr [rcx + rcx]
cmp sil, cl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
