.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -117 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdi
or rax, 1362710293
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
bts rbx, rsi
test al, dl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
test dil, dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
add dl, -53 # instrumentation
lea rbx, qword ptr [rax + rsi + 18297]
cmovnle rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
test rax, -1576813424
lea di, qword ptr [rbx + rdx]
not edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
