.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
setle dl
cmovnbe rbx, rax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
imul ecx, eax, 45
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, 28 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
cmovnle esi, edi
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
add bl, 60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 37
add bl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
cmp bl, -114
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
